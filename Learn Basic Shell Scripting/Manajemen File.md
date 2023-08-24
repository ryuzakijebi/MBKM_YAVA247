- ### Membuat file test.sh
    ```
    touch test.sh
    ```
    #
- ### Isi file tesh.sh
    ```
    #!/bin/bash --

    echo ""
    echo "-------------- File and Directory Management --------------"
    echo ""

    current_directory=$(pwd)
    echo "Current directory: $current_directory"

    new_directory="new_folder"
    mkdir $new_directory
    echo "New directory '$new_directory' created."

    cd $new_directory
    echo "Moved to directory: $(pwd)"

    touch file1.txt
    touch file2.txt
    echo "Created files: file1.txt and file2.txt"

    echo "Contents of directory: $(ls)"

    mv file1.txt renamed_file.txt
    echo "Renamed file: renamed_file.txt"

    cp renamed_file.txt copied_file.txt
    echo "Copied file: copied_file.txt"

    rm copied_file.txt
    echo "Removed file: copied_file.txt"

    cd ..
    echo "Returned to directory: $(pwd)"

    rmdir $new_directory
    echo "Removed directory: $new_directory"

    echo ""
    echo "---------------------------------------------------------"
    ```
#
- ### Ubah permission tesh.sh
    ```
    chmod +x test.sh
    ```
    #
- ### Jalankan tesh.sh
    ```
    ./test.sh
    ```
