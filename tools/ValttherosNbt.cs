using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Text;
public sealed class ValttherosEntitySpec { public string Id; public string Name; public string Color; public string[] Tags; public string Profession; public string VillagerType; public bool NoAI; public double X,Y,Z; }
public static class ValttherosNbt {
 static void B(BinaryWriter w, byte v){w.Write(v);} static void S(BinaryWriter w, short v){w.Write((byte)(v>>8));w.Write((byte)v);} static void I(BinaryWriter w,int v){w.Write((byte)(v>>24));w.Write((byte)(v>>16));w.Write((byte)(v>>8));w.Write((byte)v);} static void L(BinaryWriter w,long v){for(int i=7;i>=0;i--)w.Write((byte)(v>>(8*i)));}
 static void D(BinaryWriter w,double v){L(w,BitConverter.DoubleToInt64Bits(v));} static void F(BinaryWriter w,float v){I(w,BitConverter.ToInt32(BitConverter.GetBytes(v),0));}
 static void Str(BinaryWriter w,string v){byte[] b=Encoding.UTF8.GetBytes(v??"");S(w,(short)b.Length);w.Write(b);} static void H(BinaryWriter w,byte t,string n){B(w,t);Str(w,n);} static void End(BinaryWriter w){B(w,0);} static void IntTag(BinaryWriter w,string n,int v){H(w,3,n);I(w,v);} static void StringTag(BinaryWriter w,string n,string v){H(w,8,n);Str(w,v);} static void ByteTag(BinaryWriter w,string n,byte v){H(w,1,n);B(w,v);}
 static void IntList(BinaryWriter w,string name,int[] vals){H(w,11,name);I(w,vals.Length);foreach(int v in vals)I(w,v);} static void DoubleList(BinaryWriter w,string name,double[] vals){H(w,9,name);B(w,6);I(w,vals.Length);foreach(double v in vals)D(w,v);}
 static string Escape(string s){return s.Replace("\\","\\\\").Replace("\"","\\\"");}
 static void EntityNbt(BinaryWriter w, ValttherosEntitySpec e){H(w,10,"nbt");StringTag(w,"id",e.Id);StringTag(w,"CustomName","{\"text\":\""+Escape(e.Name)+"\",\"color\":\""+e.Color+"\",\"bold\":true}");ByteTag(w,"CustomNameVisible",1);ByteTag(w,"PersistenceRequired",1);if(e.NoAI)ByteTag(w,"NoAI",1);H(w,9,"Tags");B(w,8);I(w,e.Tags.Length);foreach(string tag in e.Tags)Str(w,tag);if(!String.IsNullOrEmpty(e.Profession)){H(w,10,"VillagerData");StringTag(w,"type",String.IsNullOrEmpty(e.VillagerType)?"minecraft:plains":e.VillagerType);StringTag(w,"profession",e.Profession);IntTag(w,"level",5);End(w);}End(w);}
 public static void Write(string path,int sx,int sy,int sz,Dictionary<string,string> blocks,ValttherosEntitySpec[] entities){
  var palette=new List<string>(blocks.Values);palette.Sort(StringComparer.Ordinal);var index=new Dictionary<string,int>();for(int i=0;i<palette.Count;i++)index[palette[i]]=i;
  using(var fs=File.Create(path))using(var gz=new GZipStream(fs,CompressionLevel.Optimal))using(var w=new BinaryWriter(gz,Encoding.UTF8)){
   B(w,10);Str(w,"");IntTag(w,"DataVersion",3955);IntList(w,"size",new int[]{sx,sy,sz});H(w,9,"palette");B(w,10);I(w,palette.Count);foreach(string block in palette){H(w,10,"");StringTag(w,"Name",block);End(w);}H(w,9,"blocks");B(w,10);I(w,blocks.Count);foreach(var kv in blocks){string[] p=kv.Key.Split(',');int x=int.Parse(p[0]),y=int.Parse(p[1]),z=int.Parse(p[2]);H(w,10,"");IntList(w,"pos",new int[]{x,y,z});IntTag(w,"state",index[kv.Value]);End(w);}H(w,9,"entities");B(w,10);I(w,entities.Length);foreach(var e in entities){H(w,10,"");DoubleList(w,"pos",new double[]{e.X,e.Y,e.Z});IntList(w,"blockPos",new int[]{(int)Math.Floor(e.X),(int)Math.Floor(e.Y),(int)Math.Floor(e.Z)});EntityNbt(w,e);End(w);}End(w);
  }
 }
}
