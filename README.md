# ruby-embedded

- Install Ruby and other requirements:
```
sudo apt update
sudo apt install ruby-full
sudo apt install build-essential ruby-dev
```

- Check installation
```
ruby -v
gem -v
```

- Install gems and bundler if needed:
```
sudo gem install bundler
```

- Configure local gem installation:
```
bundle config set --local path 'vendor/bundle'
bundle install
```

