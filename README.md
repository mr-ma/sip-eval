

# Usage
Run the whole experiment and dump data by executing:
sh run-all.sh




1. Apply clone and extract on programs (in BC format) in the dataset
2. Create 20 combination (at the most) of 10%, 25%, 50% and 100% of functions
3. Feed the function lists to the protection tool to generate protected binaries
	3.1. SC only is applied on input dependent functions
	3.2. SC is randomly applied on the provided functions
4. Hook system calls to bypass wait for input in games and other programs?
5. Run protection passes
6. Dump protected binaries in {ProgramName}_Protected_{#} format

# Citation
Please cite the tool as:
```
@inproceedings{Ahmadvand:2018:PIP:3274694.3274732,
 author = {Ahmadvand, Mohsen and Hayrapetyan, Anahit and Banescu, Sebastian and Pretschner, Alexander},
 title = {Practical Integrity Protection with Oblivious Hashing},
 booktitle = {Proceedings of the 34th Annual Computer Security Applications Conference},
 series = {ACSAC '18},
 year = {2018},
 isbn = {978-1-4503-6569-7},
 location = {San Juan, PR, USA},
 pages = {40--52},
 numpages = {13},
 url = {http://doi.acm.org/10.1145/3274694.3274732},
 doi = {10.1145/3274694.3274732},
 acmid = {3274732},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {Man-At-The-End, Oblivious hashing, Self-checking, Software protection, Tamper detection},
}
```
