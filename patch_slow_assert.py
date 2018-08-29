from pwn import *
import sys, subprocess
import argparse
import mmap
import re
from shutil import copyfile

def get_function_info(file_name, function_name):
	import r2pipe
	r2 = r2pipe.open(file_name)
	#find addresses and sizes of all functions
	r2.cmd("aa")
	function_list = r2.cmdj("aflj")
	found_func = filter(lambda function:  function['name'] == 'sym.'+function_name,function_list)
	if len(found_func)>0:
                address = r2.cmd("?p "+str(found_func[0]['offset']))
		return int(address,16), found_func[0]['size']
        print "FAILED TO FIND Assert FUNCTION {}".format(function_name)
        #let's try find the other function :/
        exit(1)
def patch_block(file_name,address, size):
    nop_list = []
    for i in range(size -1):
        nop_list.append(0x90)
    nop_bytes = struct.pack('B'*len(nop_list),*nop_list)
    print "Noping {} bytes @ {}".format(len(nop_bytes),hex(address))
    with open(file_name, 'r+b') as f:
        mm = mmap.mmap(f.fileno(), 0)
        mm.seek(address,os.SEEK_SET)
        mm.write(nop_bytes)

def patch_block2(file_name,address, size):
    nop_list = []
    condition_length = 24
    start_pos = 8
    for i in range(24):
        nop_list.append(0x90)
    nop_bytes = struct.pack('B'*len(nop_list),*nop_list)
    print "Noping {} bytes @ {}".format(len(nop_bytes),hex(address))
    with open(file_name, 'r+b') as f:
        mm = mmap.mmap(f.fileno(), 0)
        mm.seek(address+start_pos,os.SEEK_SET)
        mm.write(nop_bytes)
def patch_function(file_name):
    function_name = "assert"
    #find the address and size of the function in the binary
    address, size = get_function_info(file_name,function_name)
    print " assert @"+hex(address),"  length:", str(size) 
    if size>1:
        patch_block(file_name,address, size)
    else:
        print 'No functions to NOP'
        exit(1)
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-b',action='store', dest='binary', help='Binary name to patch its slow assert')
    
    results = parser.parse_args()
    ##NOP assert condition already visited
    patch_function(results.binary)
if __name__ == "__main__":
    main()
