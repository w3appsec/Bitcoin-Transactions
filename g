echo "GENERATING KEYS"
cat wif
echo "GENERATING TRANSACTION"
tx -a $(cat coin) $(cat payto) -F 10000 -o tx.bin 
echo "SIGNING TRANSACTION"
tx -a tx.bin -f wif -o signed_tx.hex
echo "ANALYSING TRANSACTION"
tx -a signed_tx.hex

