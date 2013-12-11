#culture.tw-api

This is the api backend for the project [culture.tw](https://github.com/chilijung/culture.tw)

## Prequest

- nodejs
- npm
- Livescript ( `npm install -g livescript` )

## Download from origin and make sample

```
    jake
```

## Testing

- mocha

## Teams

- 溫為國
- 吳典陽
- 紀力榮
- 楊智弘

## Data format

https://github.com/chilijung/culture.tw-api/blob/master/data_format.md

## Design Patterns

#### Singleton pattern

- We are using singleton pattern for creating some public methods for data filering usages
- Why singleton?
     * used for namespacing
     * reduces the number of global variables, and avoid private variables being polluted
     * organize code in a consistent manner
     * increase readability and maintainabilities for functions



## License

MIT
