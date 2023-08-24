- ### 1. Positional Parameters

    Argumen yang diberikan kepada skrip sesuai dengan urutannya saat skrip dijalankan. Argumen pertama disimpan dalam $1, argumen kedua dalam $2, dan seterusnya. Jika skrip dijalankan dengan perintah ./script.sh arg1 arg2, maka $1 akan berisi "arg1" dan $2 akan berisi "arg2".

    Contoh :
    ```
    #!/bin/bash

    echo "Argumen pertama: $1"
    echo "Argumen kedua: $2"
    ```

- ### 2. Special Parameters

    - `$0`: Nama skrip itu sendiri.
    - `$#`: Jumlah argumen yang diberikan kepada skrip.
    - `$*` atau $@: Semua argumen diperlakukan sebagai satu string (bila dikutip) atau sebagai daftar terpisah (bila tidak dikutip).
    - `$?`: Nilai kembali dari perintah terakhir yang dijalankan.
    - `$$` : PID (Process ID) dari skrip yang sedang berjalan.

    Contoh :
    ```
    #!/bin/bash

    echo "Script name: $0"
    echo "Number of arguments: $#"
    echo "Argument list: $*"
    echo "Exit status: $?"
    echo "Script PID: $$"
    ```
#
- ### 3. Environment Parameters
    Shell juga memiliki akses kepada variabel lingkungan sistem, yang dapat diakses melalui parameter khusus seperti $HOME, $USER, dan lain-lain. Ini berguna untuk mendapatkan informasi tentang pengguna atau konfigurasi sistem.

    ```
    #!/bin/bash
    echo "Nama pengguna: $USER"
    echo "Direktori rumah: $HOME"
    ```
#
- ### 4. Parameter with Options
    Skrip shell dapat menerima argumen dengan opsi yang ditentukan, dapat menggunakan perintah getopts yang memungkinkan penggunaan argumen dengan opsi pendek (-a, -b, dst.) dan opsi panjang (--option1, --option2, dst.).

    Contoh :
    ```
    #!/bin/bash

    while getopts "a:b:" opt; do
    case $opt in
        a) arg_a="$OPTARG";;
        b) arg_b="$OPTARG";;
        \?) echo "Opsi yang tidak valid: -$OPTARG";;
    esac
    done

    echo "Opsi a: $arg_a"
    echo "Opsi b: $arg_b"
    ```