# What is VI Editor ? 

- Vi (pronounced "vee-eye") is a widely-used text editor on Unix and Linux systems. It was developed by Bill Joy in the 1970s as a visual mode for the Unix editor ex. VI editor is popular for its simple and efficient user interface, which allows users to navigate, edit, and manipulate text quickly and easily.
- Vi has two modes of operation: Command mode and Insert mode. In Command mode, you can navigate the document, delete text, and perform other editing tasks, while in Insert mode, you can insert new text into the document. The editor starts in Command mode, and you can switch between modes using the i key to enter Insert mode and the Esc key to return to Command mode.
- It's popular among system administrators and software developers, as it is available on almost every Unix-like system, making it a reliable and consistent tool for editing files on different platforms.


# VI Commands :

<ol>
  <li>i: insert mode (begin inserting text)</li>
  <li>Esc: exit insert mode and return to command mode</li>
  <li>x: delete the character under the cursor</li>
  <li>dd: delete the current line</li>
  <li>u: undo the last change</li>
  <li>Ctrl + r: redo the last undo </li>
  <li>:w: write (save) the file</li>
  <li>:q: quit the editor (only works if the file has not been modified)</li>
  <li>:wq: write and quit the editor</li>
  <li>:q!: quit the editor without saving changes</li>
  <li>/pattern: search for the given pattern in the document</li>
  <li>n: move to the next instance of the search pattern</li>
  <li>:set nu: show line numbers</li>
  <li>:set nonu: hide line numbers</li>
  <li>:%s/old/new/g: replace all occurrences of "old" with "new" in the entire file</li>
  <li>gg: Go to the top of the file</li>
  <li>G: Go to the bottom of the file</li>
  <li>:r fileName: read and insert the contents of fileName at the cursor</li>
  <li>:w fileName: write the contents of the current file to fileName</li>
  <li>:%!sort: sorts the whole file in alphabetical order</li>
</ol>
