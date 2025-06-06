
# Мини Уеб Сървър (Mini Web Server)

Базов HTTP сървър, написан на Haskell с използване на библиотеката `wai`.

## Как да стартирате

1. Инсталирайте GHC и Cabal.
2. Създайте cabal проект:

```bash
cabal init
cabal install --lib wai warp
```

3. Компилирайте и стартирайте:

```bash
ghc Main.hs -o webserver
./webserver
```

4. Отворете браузър на `http://localhost:8080`

## Лиценз
Проектът е под MIT лиценз.
