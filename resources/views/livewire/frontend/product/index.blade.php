<div>
    <div class="row">

        <div class="col-md-12">
            <div class="category-container">
                <div class="cate-box">
                    <div class="cat-prd__product">
                        <div class="row-flex">
                            @forelse ($products as $productItem)
                                <div class="cdt-product product-sale">
                                    <div class="cdt-product__img">
                                        <div class="product-card-img">
                                            @if ($productItem->quantity > 0)
                                                <label class="btn-stock btn-in-stock">In Stock</label>
                                            @else
                                                <label class="btn-stock btn-out-stock">Out of Stock</label>
                                            @endif
                                            @if ($productItem->productImages->count() > 0)
                                                <a
                                                    href="{{ url('/collections/' . $productItem->category->slug . '/' . $productItem->slug) }}">
                                                    <img src="{{ asset($productItem->productImages[0]->image) }}"
                                                        alt="{{ $productItem->name }}">
                                                </a>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="cdt-product__info">
                                        <h5 class="cdt-product__name">
                                            <a
                                                href="{{ url('/collections/' . $productItem->category->slug . '/' . $productItem->slug) }}">
                                                {{ $productItem->name }}
                                            </a>
                                        </h5>
                                        <div class="cdt-product__show-promo">
                                            <div class="price-category">${{ $productItem->price }}</div>
                                            <div class="strike-price">
                                                <strike>${{ $productItem->old_price }}</strike>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div class="col-md-12">
                                    <h5>No Products Available for {{ $category->name }}</h5>
                                </div>
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
