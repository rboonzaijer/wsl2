source ~/.bashrc

echo 'default-php'
php -r 'echo PHP_VERSION;'
echo ''
echo ''

echo 'php'
php8.2 -r 'echo PHP_VERSION;'
echo ''
php8.1 -r 'echo PHP_VERSION;'
echo ''
php8.0 -r 'echo PHP_VERSION;'
echo ''
php7.4 -r 'echo PHP_VERSION;'
echo ''

echo ''
echo 'node'
node -v
echo ''

echo 'npm'
npm -v
echo ''

echo 'yarn'
yarn -v
echo ''

git -v
git-lfs -v
echo ''

composer --version
echo ''
