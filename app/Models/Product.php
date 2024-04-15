<?php

namespace App\Models;

use App\Models\ProductSizeModel;
use App\Models\ProductColorModel;
use App\Models\ProductImageModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;

    protected $table = 'product';

    static public function checkSlug($slug){
        return self::where('slug','=',$slug)->count();
    }

    static public function  getSingle($id){
        return self::find($id);
    }

    static public function getRecord(){
        return self::select('product.*','users.name as created_by_name')
               ->join('users','users.id', '=', 'product.created_by')
               ->where('product.is_delete', '=', 0)
               ->orderBy('product.id','desc')
               ->paginate(50);
    }


    public function getColor(){
        return $this->hasMany(ProductColorModel::class,"product_id");
    }

    public function getSize(){
        return $this->hasMany(ProductSizeModel::class,"product_id");
    }


    public function getImage(){
        return $this->hasMany(ProductImageModel::class,"product_id")->orderBy('order_by','asc');
    }


}
