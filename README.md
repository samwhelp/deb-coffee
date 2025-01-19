

# deb-coffee

> [deb-coffee](https://samwhelp.github.io/deb-coffee/)




## Link

* Pacstall / [pacstall-programs](https://github.com/pacstall/pacstall-programs#pacstall-programs)
* Pacstall / Wiki / Pacscript 101 / [Example of script placement](https://github.com/pacstall/pacstall/wiki/Pacscript-101#pacscript-name)




## Manpage

* $ [man pacstall](https://github.com/samwhelp/deb-coffee/blob/main/helper/share/manpage/pacstall.md#manpage)




## Pacstall Pacscript Repository Structure


```
.
├── packagelist
└── packages
    └── demo
        └── demo.pacscript
```


## Update Db

run

``` sh
ls -1 packages > packagelist
```

or run

``` sh
make db-update
```




## View packagelist

run to view [packagelist](packagelist)

``` sh
less packagelist
```

or run

``` sh
view packagelist
```




## Add Repository / Remote

run

``` sh
pacstall -A https://raw.githubusercontent.com/samwhelp/deb-coffee/main
```

or run

``` sh
pacstall -A https://github.com/samwhelp/deb-coffee/tree/main
```


run

``` sh
cat /usr/share/pacstall/repo/pacstallrepo
```

show

```
https://raw.githubusercontent.com/pacstall/pacstall-programs/master
https://raw.githubusercontent.com/samwhelp/deb-coffee/main
```




## Add Repository / Local

run

``` sh
git clone https://github.com/samwhelp/deb-coffee.git ~/Documents/deb-coffee
```


run

``` sh
pacstall -A "file://${HOME}/Documents/deb-coffee"
```

> See Also `man 8 pacstall`


## Demo

### Search

``` sh
pacstall -S demo
```

### Build and Install

``` sh
pacstall -I demo
```


### Only Build

``` sh
pacstall -I -B demo
```


### Download pacscript

``` sh
pacstall -D demo
```
