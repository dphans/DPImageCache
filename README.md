# DPImageCache
Swift extension for UIImageView. Help loading image asynchronously and store local file cache.

# Features
- Loading image asynchronously.
- Cache local file-based.


![alt tag](https://raw.githubusercontent.com/dphans/DPImageCache/master/Screenshot.png)

# How to use
```swift
    var imgAddress = "http://blabla.com/blabla.png"
    let cacheDirectoryName = "cache"
    imgView.setImageCacheWithAddress(
            imgAddress,
            placeHolderImage: UIImage(named: "placeHolderImage")!,
            cacheDirName: cacheDirectoryName)
```

# Contact
www: http://dinophan.com
email: baophan94@icloud.com
