package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_834:BigInteger;
      
      private var var_2049:BigInteger;
      
      private var var_1491:BigInteger;
      
      private var var_2048:BigInteger;
      
      private var var_1226:BigInteger;
      
      private var var_1490:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1226 = param1;
         this.var_1490 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1226.toString() + ",generator: " + this.var_1490.toString() + ",secret: " + param1);
         this.var_834 = new BigInteger();
         this.var_834.fromRadix(param1,param2);
         this.var_2049 = this.var_1490.modPow(this.var_834,this.var_1226);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1491 = new BigInteger();
         this.var_1491.fromRadix(param1,param2);
         this.var_2048 = this.var_1491.modPow(this.var_834,this.var_1226);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2049.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2048.toRadix(param1);
      }
   }
}
