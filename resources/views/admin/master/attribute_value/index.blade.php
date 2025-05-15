@extends('layouts.admin.app')

@section('title', $attribute->name.' (Attribute)')

@section('css')
   
@endsection

@section('breadcrumb-items')
    <li class="breadcrumb-item">Master Attributes</li>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header d-flex">
                        <h4 class="card-title">All {{ $attribute->name ?? 'N/A' }} <small class="text-muted">(Attribute Value)</small></h4>
                        <a href="#" class="btn btn-primary ms-auto col-auto" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="edit_modal(0)">Add {{ $attribute->name ?? 'N/A' }} Value</a>
                    </div>
                    <div class="card-body">
                        <div class="dt-ext ">
                            <div id="datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer" onchange="get_datatable()">
                                <div class="row justify-content-between">
                                    <div class="col-sm-12 col-md-6 col-lg-auto">
                                        <div class="dataTables_length" id="datatable_length">
                                            <label>Show 
                                                <select name="datatable_length" class="form-select" id="datatable_page_show">
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                    <option value="150">150</option>
                                                    <option value="200">200</option>
                                                    <option value="300  ">300</option>
                                                </select> entries
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6 col-lg-auto">
                                        <div id="datatable_filter" class="dataTables_filter">
                                            <label>Search:<input type="search" id="datatable_search" class="form-control form-control-sm" placeholder="" aria-controls="datatable"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12" id="get_datatable"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- All Client Table End -->
    </div>


    <div class="modal fade" id="edit_modal" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog" id="ajax_html">
            
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function(){
            get_datatable();
        });

        $(document).on('click','.pages a',function(n){
            n.preventDefault();
            var page = $(this).attr('href').split("page=")[1];
            get_datatable(page);
        });

        function get_datatable(page){
            $('#get_datatable').html('<div class="loader-box"><div class="loader-37"></div></div>');
            var value = $('#datatable_page_show').val();
            var search = $('#datatable_search').val();
            var status = $('#status').val();
            var page = page ?? 1;
            $.get('{{ route("master.attribute_value.datatable") }}?page='+page+'&value='+value+'&search='+search+'', { attribute_id: '{{ $attribute->id }}',status:status}, function(data){
                $('#get_datatable').html(data);
                feather.replace();
            });
        }

        function edit_modal(id){
            $('#ajax_html').html('<div class="loader-box"><div class="loader-37"></div></div>');
            $.get('{{ url('master/attribute_value/edit') }}/'+id,{ attribute_id: '{{ $attribute->id }}' }, function(data){
                $('#ajax_html').removeClass();
                $('#ajax_html').addClass('modal-dialog');
                $('#ajax_html').html(data);
            });
        }

        $(document).on('submit','form',function(event){
            event.preventDefault();
            var form = event.target;
            var form_data = new FormData(form);
            $.ajax({
                url: $(event.target).attr('action'),
                type: 'POST',
                data: form_data,
                processData: false,
                contentType: false,
                success: function(data){
                    if((data.id ?? '') != ''){
                        $.notify({ title:'Success', message:data.message }, { type:'success', });
                        get_datatable();
                        $('#edit_modal').modal('hide');
                    }else{
                        $.notify({ title:'Error', message:data }, { type:'danger', });
                        $('form button[type="submit"]').html('Save');
                        $('form button[type="submit"]').removeClass('disabled');
                    }
                }
            });
        });

        function change_status(id){
            $('#status_'+id).html('<div class="spinner-border spinner-border-sm text-light"></div>');
            $.get('{{ url('master/attribute_value/status') }}/'+id, function(data){
                $.notify({ title:'Success', message:'Make Status Changed Successfully' }, { type:'success', });
                if(data == 1){
                    $('#status_'+id).addClass('badge-success');
                    $('#status_'+id).removeClass('badge-danger');
                    $('#status_'+id).text('Active');
                }else{
                    $('#status_'+id).addClass('badge-danger');
                    $('#status_'+id).removeClass('badge-success');
                    $('#status_'+id).text('Inactive');
                }
            });
        }
    </script>
@endsection
