@extends('admin.layouts.master')

@section('title')
    Danh sách thành phố
@endsection

@section('content')
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Danh sách thành phố</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Thành phố</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="card-title mb-0">Danh sách thành phố</h4>
                    <div>
                        <a href="{{ route('admin.cities.trash') }}"
                            class="btn btn-light bg-gradient waves-effect waves-light">
                            <i class="ri-delete-bin-fill"></i>Thùng rác</a>
                    </div>
                </div><!-- end card header -->

                <div class="card-body">
                    <div class="listjs-table" id="customerList">
                        <div class="row g-4 mb-3">
                            <div class="col-sm-auto">
                                <div>
                                    <a href="{{route('admin.cities.create')}}" class="btn btn-success add-btn"><i
                                            class="ri-add-line align-bottom me-1"></i> Thêm mới
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm">
                                <form class="d-flex justify-content-sm-end" action="" method="get">
                                    <div class="ms-2">
                                        <select name="region" id="" class="form-select">
                                            <option value="">Chọn miền</option>
                                            @foreach ($regions as $region)
                                                <option value="{{$region->id}}" @selected(request()->input('region') == $region->id)>{{$region->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="ms-2">
                                        <input type="text" value="{{ request()->input('city') }}" class="form-control"
                                            name="city" placeholder="Điền tên thành phố">
                                    </div>
                                    <div class="ms-2">
                                        <button class="btn btn-primary" type="submit">Tìm</button>
                                    </div>
                                </form>
                            </div>
                        </div>



                        <div class="card-body table-responsive table-card mt-3 mb-1">
                            <table class="table align-middle table-nowrap" id="customerTable">
                                <thead class="table-light">
                                    <tr>
                                        {{-- <th scope="col" style="width: 50px;">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="checkAll"
                                                       value="option">
                                            </div>
                                        </th> --}}
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Ảnh</th>
                                        <th>Miền</th>
                                        <th>###</th>
                                    </tr>
                                </thead>
                                <tbody class="list form-check-all">
                                    @foreach ($data as $key => $city)
                                        <tr>
                                            {{-- <th scope="row">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="chk_child"
                                                           value="option1">
                                                </div>
                                            </th> --}}
                                            <td class="id" style="display:none;"><a href="javascript:void(0);"
                                                    class="fw-medium link-primary"></a>
                                            </td>
                                            <td class="name">{{ $key + 1 }}</td>
                                            <td class="name">{{ $city->name }}</td>
                                            <td>
                                                <img src="{{\Storage::url($city->thumbnail)}}" alt="Ảnh thành phố" width="100px">
                                            </td>
                                            <td class="region_id">{{ $city->region->name }}</td>
                                            <td>
                                                <div class="d-flex gap-2">
                                                    <div class="edit">
                                                        <a href="{{route('admin.cities.edit', $city->id)}}" class="btn btn-sm btn-soft-warning edit-item-btn"><i
                                                                class="ri-edit-2-line"></i></a>
                                                    </div>
                                                    <div class="remove">
                                                        <button class="btn btn-sm btn-soft-danger remove-item-btn"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#deleteRecordModal{{ $city->id }}"><i
                                                                class="ri-delete-bin-2-line"></i></button>
                                                    </div>

                                                </div>
                                            </td>
                                        </tr>

                                        {{-- <div class="modal fade" id="showModal{{ $city->id }}" tabindex="-1"
                                             aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-light p-3">
                                                        <h5 class="modal-title" id="exampleModalLabel">Sửa thành phố
                                                        </h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close" id="close-modal"></button>
                                                    </div>
                                                    <form class="tablelist-form" autocomplete="off"
                                                          action="{{ route('admin.cities.update', $city) }}"
                                                          method="POST">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <label class="form-label" for="name">Tên thành phố</label>
                                                                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name"
                                                                       value="{{ $city->name }}" placeholder="Tên thành phố">
                                                                @error('name')
                                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                                                @enderror
                                                            </div>

                                                            <select class="form-select @error('region_id') is-invalid @enderror" id="region_id"
                                                                    name="region_id">
                                                                <option value="">Chọn miền</option>
                                                                @foreach ($regions as $region)
                                                                    <option value="{{ $region->id }}" {{ $region->id == $city->region_id ? 'selected' : '' }}>
                                                                        {{ $region->name }}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('region_id')
                                                            <div class="invalid-feedback d-block">{{ $message }}</div>
                                                            @enderror
                                                        </div>

                                                        <div class="modal-footer">
                                                            <div class="hstack gap-2 justify-content-end">
                                                                <button type="button" class="btn btn-light"
                                                                        data-bs-dismiss="modal">
                                                                    Đóng
                                                                </button>
                                                                <button type="submit" class="btn btn-success"
                                                                        id="add-btn">
                                                                    Sửa
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> --}}

                                        <!-- Modal -->
                                        <div class="modal fade zoomIn" id="deleteRecordModal{{ $city->id }}"
                                            tabindex="-1" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close" id="btn-close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="mt-2 text-center">
                                                            <lord-icon src="https://cdn.lordicon.com/gsqxdxog.json"
                                                                trigger="loop" colors="primary:#f7b84b,secondary:#f06548"
                                                                style="width:100px;height:100px"></lord-icon>
                                                            <div class="mt-4 pt-2 fs-15 mx-4 mx-sm-5">
                                                                <h4>Bạn chắc chắn ?</h4>
                                                                <p class="text-muted mx-4 mb-0">Bạn có chắc muốn xóa ?
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                                                            <form action="{{ route('admin.cities.destroy', $city) }}"
                                                                method="post">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" type="button"
                                                                    class="btn w-sm btn-light" data-bs-dismiss="modal">Đóng
                                                                </button>
                                                                <button type="submit" class="btn w-sm btn-danger "
                                                                    id="delete-record">Chắc chắn!
                                                                </button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </tbody>
                            </table>

                            <div class="noresult" style="display: none">
                                <div class="text-center">
                                    <lord-icon src="https://cdn.lordicon.com/msoeawqm.json" trigger="loop"
                                        colors="primary:#121331,secondary:#08a88a"
                                        style="width:75px;height:75px"></lord-icon>
                                    <h5 class="mt-2">Sorry! No Result Found</h5>
                                    <p class="text-muted mb-0">We've searched more than 150+ Orders We did not find
                                        any
                                        orders for you search.</p>
                                </div>
                            </div>
                        </div>

                        {{-- <div class="modal fade" id="showModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header bg-light p-3">
                                            <h5 class="modal-title" id="exampleModalLabel">Thêm miền</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close" id="close-modal"></button>
                                        </div>
                                        <form class="tablelist-form" autocomplete="off"
                                              action="{{ route('admin.cities.store') }}" method="POST">
                                            @csrf
                                            <div class="modal-body">
                                                <div class="mb-3">
                                                    <label class="form-label" for="name">Tên thành phố</label>
                                                    <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name"
                                                           value="{{ old('name') }}" placeholder="Tên thành phố">
                                                    @error('name')
                                                    <div class="invalid-feedback d-block">{{ $message }}</div>
                                                    @enderror
                                                </div>

                                                <select class="form-control @error('region_id') is-invalid @enderror" id="region_id" name="region_id">
                                                    <option value="">Chọn miền</option>
                                                    @foreach ($regions as $region)
                                                        <option value="{{ $region->id }}">{{ $region->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('region_id')
                                                <div class="invalid-feedback d-block">{{ $message }}</div>
                                                @enderror
                                            </div>

                                            <div class="modal-footer">
                                                <div class="hstack gap-2 justify-content-end">
                                                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">
                                                        Đóng
                                                    </button>
                                                    <button type="submit" class="btn btn-success" id="add-btn">
                                                        Thêm
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> --}}

                    </div>
                    {{ $data->appends(request()->query())->links() }}
                </div><!-- end card -->
            </div>
            <!-- end col -->
        </div>
        <!-- end col -->
    </div>
    <!-- end row -->
@endsection

@section('styles')
    <style>
        td {
            white-space: nowrap;
            /* Không xuống dòng */
            overflow: hidden;
            /* Ẩn phần văn bản thừa */
            text-overflow: ellipsis;
            /* Hiển thị dấu ... khi vượt quá */
            max-width: 150px;
            /* Đặt chiều rộng tối đa */

        }
    </style>
@endsection

@section('style-libs')
    <!-- Sweet Alert css-->
    <link href="{{ asset('theme/admin/assets/libs/sweetalert2/sweetalert2.min.css') }}" rel="stylesheet"
        type="text/css" />
@endsection

@section('scripts')
    <script>
        function deleteMultiple() {
            let formDelMulti = document.querySelector("#deleteMulti");
            let checkboxes = formDelMulti.querySelectorAll(".service");

            // Kiểm tra xem có ít nhất một checkbox được chọn hay không
            let hasChecked = Array.from(checkboxes).some(checkbox => checkbox.checked);

            if (confirm("Bạn có muốn xóa các dịch vụ khách sạn này không?")) {
                if (!hasChecked) {
                    // Nếu chưa chọn checkbox nào, hiển thị thông báo
                    alert("Bạn cần chọn ít nhất 1 dịch vụ");
                    return;
                }
                formDelMulti.submit();
            }
        }
    </script>

    <script>
        function addImageGallery() {
            let id = 'gen' + '_' + Math.random().toString(36).substring(2, 15).toLowerCase();
            let html = `
            <div class="col-md-4" id="${id}_item">
                <label for="${id}" class="form-label">Image</label>
                <div class="d-flex">
                    <input type="file" class="form-control" name="product_galleries[]" id="${id}">
                    <button type="button" class="btn btn-danger" onclick="removeImageGallery('${id}_item')">
                        <span class="bx bx-trash"></span>
                    </button>
                </div>
            </div>
        `;

            $('#gallery_list').append(html);
        }

        function removeImageGallery(id) {
            $('#' + id).remove()
        }
    </script>
@endsection

@section('script-libs')
    <!-- prismjs plugin -->
    <script src="{{ asset('theme/admin/assets/libs/prismjs/prism.js') }}"></script>
    <script src="{{ asset('theme/admin/assets/libs/list.js/list.min.js') }}"></script>
    <script src="{{ asset('theme/admin/assets/libs/list.pagination.js/list.pagination.min.js') }}"></script>

    <!-- list.js min js -->
    <script src="{{ asset('theme/admin/assets/js/pages/listjs.init.js') }}"></script>

    <!-- Sweet Alerts js -->
    <script src="{{ asset('theme/admin/assets/libs/sweetalert2/sweetalert2.min.js') }}"></script>
@endsection
