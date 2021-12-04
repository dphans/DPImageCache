# DPImageCache
Swift extension for UIImageView. Help loading image asynchronously and store local file cache.

# Features
- Load image asynchronously.
- Cache local file-based.


![alt tag](https://raw.githubusercontent.com/dphans/DPImageCache/master/Screenshot.png)

# How to use

- Import DPImageCache.swift

- Simple code like this:

```swift
    let imgAddress = "http://blabla.com/blabla.png"
    imgView.setImageCacheWithAddress(
            imgAddress,
            placeHolderImage: UIImage(named: "placeHolderImage")!)
```

- Clean cache files:

```swift
        DPImageCache.cleanCace()
```


# Contact
www: http://dinophan.com
email: baophan94@icloud.com
Thanks to @ThanhHuong98
