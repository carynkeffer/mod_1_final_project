# Enigma
## Self Evaluation


1. **Functionality**

**3**

- Enigma Class with encrypt and decrypt methods successfully implemented. Encrypt/decrypt command line interfaces successfully implemented


2. **OOP**

**4**

- Students have implemented either inheritance or at least one module in a logical manner. Students can speak as to how/why inheritance and modules made sense for the given implementations, why they improve the organization of the code, and the distinction between the two


3. **Ruby Conventions & Mechanics**

**2.5**

- Code is mostly properly indented, spaced, and lines are not excessively long. Class, method, variable, and file names follow convention. Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen. At least one hash is implemented in a way that makes logical sense


4. **TDD**

**2**

- Every method is not tested, expected behavior is partially tested, and/or no edge cases are addressed. git history does not demonstrate students are writing tests before implementation code


5. Version Control  ✔️


### Some Improvements I Could Make:


- I could significantly DRY up my code by setting up the `Shift#counter` method that would need to take a `direction` as an argument. This `direction` argument would be able to change the "direction" of the `counter` method. I would do this by using a symbol as an argument in my `encrypt/decrypt` methods, either `:+` or `:-`

- The following methods:

1. `Shift#to_letters` and `Shift#reverse_letters`

2. `Shift#parse_index` and `Shift#reverse_index`

would be able to change to `Shift#letters` and `Shift#index` if I am able to refactor the `counter` method mentioned above.

- There's a possibility that my TDD improves before turning this in if I can figure out how to get Simple Cov gem working and/or rake.


### What I Learned

There are three areas where I learned new things while completing this project:

1. How I work

2. The parts of coding I enjoy

3. Technical ability

4. How to take care of myself so I can code for as long as possible
