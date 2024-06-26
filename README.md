# excellent-demo

Each folder has a function I'd like to convert.  There's a sample function call in each file, naturally, that doesn't need to be converted.  You can just check in the generated .ll files (and any other dependnecies) into each folder.

- trivial - This is just to get the whole pipeline working in a way that I can exmaine the intermediate artifacts and still make sense of them.  Main goal for me will be taking the llvm ir all the way to device, and getting an idea for any overhead.
- Sgram - spectrogram, this is interesting b/c there's a very memory intensive way to perform this calc, and a very stingy way, and I'm curious what will fall out
- tsfresh - I've had several customers using this.  Also this lib has a ton of dependencies, so I'm curious how codon handles the unneeded dependencies.
- customer - Another snippet from a customer, also curious how using scipy.signal goes since that's another common lib

If you need to modify anything, go for it, just be sure to check in your changes in so I can see what had to change.

