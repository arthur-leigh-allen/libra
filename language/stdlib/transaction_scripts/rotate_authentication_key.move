script {
use 0x1::LibraAccount;
fun rotate_authentication_key(account: &signer, new_key: vector<u8>) {
  let key_rotation_capability = LibraAccount::extract_key_rotation_capability(account);
  LibraAccount::rotate_authentication_key(&key_rotation_capability, new_key);
  LibraAccount::restore_key_rotation_capability(key_rotation_capability);
}
}
