echo "GENERATING KEYS"
cat wifdec
echo "GENERATING TRANSACTION"
tx -a $(cat coindec) $(cat paytodec) -F 10000 -o txdec.bin 
echo "SIGNING TRANSACTION"
tx -a txdec.bin -f wifdec -o signed_txdec.hex
echo "ANALYSING TRANSACTION"
tx -a signed_txdec.hex

