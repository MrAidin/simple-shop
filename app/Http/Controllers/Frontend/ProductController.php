<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\AttributeGroup;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getProduct($slug)
    {
        $product = Product::with(['photos', 'attributeValues.attributeGroup', 'brand', 'categories'])->where('slug', $slug)->first();
        $relatedProducts = Product::with('categories')->whereHas('categories', function ($q) use ($product) {
            $q->whereIn('id', $product->categories->pluck('id'));
        })->get();
        return view('Frontend.products.index', compact(['product', 'relatedProducts']));
    }

    public function getProductByCategory($id, $page = 10)
    {
        $category = Category::whereId($id)->first();
        $products = Product::with('photos')->whereHas('categories', function ($q) use ($category) {
            $q->where('id', $category->id);
        })->paginate($page);
        return view('Frontend.categories.index', compact(['category', 'products']));
    }

    public function apiProducts($id)
    {
        $products = Product::with('photos')->whereHas('categories', function ($q) use ($id) {
            $q->where('id', $id);
        })->paginate(2);
        $response = [
            'products' => $products
        ];
        return response()->json($response, 200);
    }

    public function getSortedProduct($id, $sort, $paginate)
    {
        $products = Product::with('photos')->whereHas('categories', function ($q) use ($id) {
            $q->where('id', $id);
        })
            ->orderBy('price', $sort)
            ->paginate($paginate);
        $response = [
            'products' => $products
        ];
        return response()->json($response, 200);
    }

    public function getCategoryAttributes($id)
    {
        $attributeGroups = AttributeGroup::with('attributesValue')->whereHas('categories', function ($q) use ($id) {
            $q->where('category_id', $id);
        })->get();
        $response = [
            'attributeGroups' => $attributeGroups
        ];
        return response()->json($response, 200);
    }

    public function apiGetFilterProducts($id, $sort, $paginate, $attributes)
    {
        $atrributesArray = json_decode($attributes, true);
        $products = Product::with('photos')->whereHas('categories', function ($q) use ($id) {
            $q->where('id', $id);
        })->whereHas('attributeValues', function ($q) use ($atrributesArray) {
            $q->whereIn('attributeValue_id',$atrributesArray);
        })
            ->orderBy('price', $sort)
            ->paginate($paginate);
        $response = [
            'products' => $products
        ];
        return response()->json($response, 200);
    }


}
