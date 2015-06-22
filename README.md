# DPImageCache
Swift extension for UIImageView. Help loading image asynchronously and store local file cache.

# Features
- Loading image asynchronously.
- Cache local file-based.


![alt tag](https://raw.githubusercontent.com/dphans/DPImageCache/master/Screenshot.png)

# How to use

1. Import DPImageCache.swift


2. Set default cache directory like this:

``` swift
let dirName = "cache"
func createCacheDirectory() {
        var fileMan = NSFileManager.defaultManager()
        var cacheDir = (NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory,
            .UserDomainMask, true)[0] as! NSString)
            .stringByAppendingPathComponent(dirName)
        if !fileMan.fileExistsAtPath(cacheDir) {
            fileMan.createDirectoryAtPath(
                cacheDir,
                withIntermediateDirectories: false,
                attributes: nil,
                error: nil)
        }
    }
```


3. Simple code like this:

```swift
    var imgAddress = "http://blabla.com/blabla.png"
    imgView.setImageCacheWithAddress(
            imgAddress,
            placeHolderImage: UIImage(named: "placeHolderImage")!,
            cacheDirName: dirName)
```

# Contact
www: http://dinophan.com
email: baophan94@icloud.com
