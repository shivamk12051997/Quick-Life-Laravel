<option value="" disabled selected>Select Child Category...</option>
@foreach ($child_categories as $child_category)
    <option value="{{ $child_category->id }}" {{ ($product->child_category_id ?? 0) == $child_category->id ? 'selected':'' }}>{{ $child_category->name }}</option>
@endforeach