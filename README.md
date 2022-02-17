# pushphyfix
Pushes the bbbphyfix to machines that are not connected to the internet

## Instructions

1. Clone this repository and its submodules

    ```
    git clone --recurse-submodules https://github.com/UBCSailbot/pushphyfix.git
    ```

2. Push the fix to the BBB

    ```
    cd pushphyfix
    ./push.sh <dest>
    ```

    - `<dest>` is the IP address of the BBB

3. Run the following commands on the BBB

    ```
    sudo su
    cd ~/pushphyfix/assets
    ./makeall.sh
    cd bbbphyfix
    ./install.sh
    sync
    ```
