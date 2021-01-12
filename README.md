1. ~~Create rails app~~


2. ~~Create a `bigfile.log` about `5 GB` and the `archive_workspace` that has manu files into one.~~\
    ~~20. Implemented `create_bigfile.rd` for creating `bigfile.log` about **5.5Gb**.~~\
    ~~21. Added others files and a some of dir into `archive_workspace`~~\
    ~~22. Implemented `create_tar.rd` to pack the `archive_workspace` dir to `archive_workspace.tar.gz`.~~\


3. ~~Download the `archive_workspace.tar.gz` to GoogleDrive.~~\
    ~~30. Link: https://drive.google.com/file/d/1bvUiwxZZAj26X__U4-8_qcYTpFBOQ6xg/view?usp=sharing~~\


4. Add the `download` action that will get `a big archive` from GoogleDrive by `Excone`
    40. Implement the `TarControllen` that mast have default actions. / investigate
    41. Add the `download` methods.
    42. Get `archive_workspace.tar.gz` from GoogleDrive using `Excon`.

5. Add the `unpack` action that will unpacking `a big archive`.

6. Add `a schedule/redis` task fir both the action: `download` / `unpack`


* ! The trouble can be hannened `Unicorn` settings.
