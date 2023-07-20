Here is an explanation of what each line in this batch script does:

```
@echo off  
```

Turns off command echoing so batch commands are not printed.

```
echo Welcome to File Properties Viewer!
```

Prints a welcome message.

```
if "%~1" == "" (
  echo Usage: %~nx0 <file_name>
  exit /b 1
)
```

Checks if first argument (%1) is empty. If so, prints usage message and exits with error code 1.

```
echo File Properties for: %~1
```

Prints message with name of file to view properties for.

``` 
echo ----------------------
```

Prints separator line.

```
dir %~1
```

Runs the dir command to print a directory listing for the file.

```
echo ---------------------- 
```

Prints another separator line.

```
file %~1
```

Runs the file command to print detailed file properties and metadata.

So in summary:

- It checks for a file name argument 
- Prints some headers
- Uses dir and file commands to print info about the file
- Exits with error if no file specified

This allows quickly viewing properties and metadata for a file by just passing the file name to the batch script.