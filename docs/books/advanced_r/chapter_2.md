# Chapter 2
### author: [jakwisn](https://github.com/jakwisn)

### In this quiz some questions might have multiple answers.

### 1. In code below when R is making copy of object bind to `a`

```r
a <- c(1, 5, 3, 2)
b <- a
b[[1]] <- 10
```
### In code above when R is making copy of object `a`

<Answer>

while asigning it to b

</Answer>
<Answer correct=true>

while modifying it

</Answer>

### 2. What is valid name for object in R?

<Answer correct=true>

`object_`

</Answer>
<Answer>

`function`

</Answer>
<Answer>

`1a`

</Answer>
<Answer>

`_object_`

</Answer>
<Answer correct=true>

It is posible with all of above after surrounding them with backticks

</Answer>

### 3. Lets say we have this vector:

```r
x <- c("a","a","bda", "bdb", "ddd", "a")
```

### How to best visualize something called global string pool

<Answer>

`ref(x)`

</Answer>
<Answer correct=true>

`ref(x, character = TRUE)`

</Answer>
<Answer>

`tracemem(x)`

</Answer>
<Answer>

untracemem(x)

</Answer>


### 4. Imagine situation when some non empty, big data frame has binding for 2 names d1 and d2. Select TRUE statement :

<Answer correct=true>

By modifying one column in d1 only this column will change list reference, the rest of references won't change

</Answer>
<Answer correct=true>

By modifying one row in d1 only this row will change list reference, the rest of references won't change


</Answer>
<Answer>

If we modify one row of d1, whole dataframe will be copied

</Answer>
<Answer correct=true>

If we modify one column of d1, whole dataframe will be copied

</Answer>



### 5. Look at these objects and answer questions

```r
x <- list(a = 1, b = 2, c = 3)
y <- list(x, x, x)
z <- c(1:100000)
```
### Which statements are TRUE
<Answer>

`y` size is 3 times `x`'s size

</Answer>
<Answer>

`obj_size(z)` is the same as `obj_size(1:1000000)`

</Answer>
<Answer correct=true>

`obj_size(1:1000000)` is example of alternative representation

</Answer>
<Answer correct=true>

running `obj_size(1:1000000)` will give really low size (comparable to y)

</Answer>

### 6. Which statements are TRUE

<Answer correct=true>

objects with single binding are modified in place

</Answer>
<Answer c>

if two bindings reference to one environment and we modify it by accesing from first name, for the second binding environment won't change

</Answer>
<Answer correct=true>

Garbage collector is autonomous and it's behaviour is hard to predict

</Answer>
