# HEIC to JPEG Converter Script

This repository contains a Bash script that automates the conversion of HEIC image files to JPEG format. It's designed to be simple and efficient, working on any directory you specify.

## Prerequisites

Before running this script, ensure you have the following installed on your system:

- Bash (Unix Shell): Most Unix-like systems come with Bash pre-installed.
- `sips`: This is a command-line tool included in macOS for image processing. The script uses `sips` to perform the conversion.

## Installation

To use this script, clone this repository or simply download the script file. If you download it as a standalone file, make sure it's executable. You can set the executable permission using the following command:

```bash
chmod +x heic_to_jpeg.sh
```

## Usage

To use the script, navigate to the directory containing the script and run:

```bash
./heic_to_jpeg.sh <path-to-directory-with-heic-files>
```

Replace <path-to-directory-with-heic-files> with the path to the directory containing your .HEIC files.

## Example

```bash
./heic_to_jpeg.sh /Users/username/Pictures/HEIC_folder
```

This will convert all .HEIC files in HEIC_folder to .jpg and save them in the same directory.

## License

This script is released under the MIT License. See the LICENSE file for more details.

## Contributing

Contributions to this script are welcome! Feel free to fork this repository, make your changes, and submit a pull request.
