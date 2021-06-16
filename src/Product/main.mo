actor {
  var ICP_product_supply = 100;
  var SDR_product_supply = 10000;

  public func mint_SDR_product(n: Nat) {
    SDR_product_supply += n;
  };
  public func get_SDR_product() : async Nat {
    return SDR_product_supply;
  };
  public func get_ICP_product() : async Nat {
    return ICP_product_supply;
  };
  public func burn_SDR_product(n: Nat) {
    SDR_product_supply -= n;
  };

  public func transferSDR_fromProd( n : Nat) {
        //Increase ICP by n tokens
        ICP_product_supply += n;
        //Create SDR
        mint_SDR_product(n);
        //Transfer from Product to User canister
        SDR_product_supply -= n;
  };
  public func transferICP_fromProd( n : Nat) {
    // Decrease ICP by n tokens
    ICP_product_supply -= n;
    SDR_product_supply += n;
    // burn SDR
    burn_SDR_product(n);
  };
  
};