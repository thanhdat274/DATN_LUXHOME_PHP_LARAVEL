@extends('admin.layouts.master')

@section('title')
    Cập nhật tài khoản
@endsection

@section('content')
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Cập nhật tài khoản</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="{{route('admin.users.index')}}">Tài khoản</a></li>
                        <li class="breadcrumb-item active">Cập nhật</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <!-- end page title -->



    <form action="{{ route('admin.users.update', $user) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="live-preview">
                            <div class="row gy-4">
                                <div class="col-7">
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Tên<span
                                                    class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="name" placeholder="Enter name"
                                               name="name" value="{{ $user->name }}">
                                        @error('name')
                                        <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email<span
                                                    class="text-danger">*</span></label>
                                        <input type="email" class="form-control" id="email" placeholder="Enter email"
                                               name="email" value="{{ $user->email }}">
                                        @error('email')
                                        <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    {{-- <div class="mb-3">
                                        <label for="password" class="form-label">Password:</label>
                                        <input type="text" class="form-control" id="password" placeholder="Enter password"
                                            name="password" value="{{$user->password}}">
                                    </div> --}}
                                    <div class="mb-3">
                                        <label for="phone" class="form-label">Số điện thoại<span
                                                    class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="phone" placeholder="Enter phone"
                                               name="phone" value="{{$user->phone}}">
                                        @error('phone')
                                        <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="mb-3">

                                        <label for="address" class="form-label">Địa chỉ</label>
                                        <input type="text" class="form-control" id="address" placeholder="Enter address"
                                               name="address" value="{{$user->address}}">
                                        @error('address')
                                        <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    @if(auth()->user()->type == \App\Models\User::ADMIN)
                                        <div class="mb-3">
                                            <label for="hotel" class="form-label">Chọn Khách Sạn:</label>
                                            <select class="form-control @error('org_id') is-invalid @enderror"
                                                    id="hotelSelect" name="org_id">
                                                <option value="">-- Chọn Khách Sạn --</option>
                                                @foreach($hotels as $hotel)
                                                    <option value="{{$hotel->id}}"
                                                            @if($hotel->id == $user?->org_id) selected @endif>{{$hotel->name}}</option>
                                                @endforeach
                                            </select>

                                            @error('org_id')
                                            <div class="invalid-feedback d-block">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    @endif
                                </div>
                                <div class="col-5">
                                    {{--                                    <div class="mb-3">--}}
                                    {{--                                        <label for="avatar" class="form-label">Avatar:</label>--}}
                                    {{--                                        <input type="file" class="form-control" id="avatar" name="avatar">--}}
                                    {{--                                        <img src="{{ \Storage::url($user->avatar) }}" alt="" width="100px">--}}
                                    {{--                                    </div>--}}
                                    @if(auth()->user()->type == \App\Models\User::ADMIN)
                                        <div class="mb-3 d-flex gap-2" style="margin-top:26px ">
                                            <div class="form-check form-radio-danger mb-3 me-3">
                                                <input class="form-check-input" type="radio" name="type" id="admin"
                                                       value="{{\App\Models\User::ADMIN}}" {{ $user->type == \App\Models\User::ADMIN ? 'checked' : '' }}>
                                                <label class="form-check-label" for="admin">
                                                    Chủ chuỗi KS
                                                </label>
                                            </div>
                                            <div class="form-check form-radio-success mb-3">
                                                <input class="form-check-input" type="radio" name="type" id="hotelier"
                                                       value="{{ \App\Models\User::HOTELIER }}" {{ $user->type == \App\Models\User::HOTELIER ? 'checked' : '' }}>
                                                <label class="form-check-label" for="hotelier">
                                                    Quản lý KS
                                                </label>
                                            </div>

                                            <div class="form-check form-radio-success mb-3">
                                                <input class="form-check-input" type="radio" name="type" id="staff"
                                                       value="{{ \App\Models\User::STAFF }}" {{ $user->type == \App\Models\User::STAFF ? 'checked' : '' }}>
                                                <label class="form-check-label" for="staff">
                                                    Nhân viên KS
                                                </label>
                                            </div>

                                            <div class="form-check form-radio-success mb-3">
                                                <input class="form-check-input" type="radio" name="type" id="member"
                                                       value="{{\App\Models\User::CUSTOMER}}" {{ $user->type == \App\Models\User::CUSTOMER ? 'checked' : '' }}>
                                                <label class="form-check-label" for="member">
                                                    Người dùng
                                                </label>
                                            </div>
                                        </div>
                                    @endif
                                    <div class="mb-3 form-check"
                                         style="margin-top:{{ auth()->user()->type == \App\Models\User::ADMIN ?'45px' :'26px' }}">
                                        <!-- Input hidden để trả về giá trị 0 khi checkbox không được chọn -->
                                        <input type="hidden" name="is_active" value="0">

                                        <!-- Checkbox thực tế -->
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1" value="1"
                                               name="is_active" {{ $user->is_active == '1' ? 'checked' : '' }}>
                                        <label class="form-check-label" for="exampleCheck1">Trạng thái</label>
                                    </div>

                                    <div class="mb-3" style="margin-top: 36px">
                                        <label class="form-label" for="avatar">Ảnh đại diện</label>
                                        <input class="form-control" id="avatar" type="file" name="avatar"
                                               accept="image/png, image/gif, image/jpeg">
                                        <img id="avatarPreview"
                                             src="{{!empty($user->avatar) ? \Storage::url($user->avatar) : asset('theme/client/images/uploads/avatar.jpg')}}"
                                             alt="Preview"
                                             style="margin-top: 10px; max-width: 200px;"/>
                                        @error('avatar')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>

                                </div>
                                <div class="card-header align-items-center justify-content-between d-flex">
                                    <a href="{{ route('admin.users.index') }}" class="btn btn-primary "><i class="ri-arrow-left-line"></i> Quay lại</a>
                                    <button type="submit" class="btn btn-warning">Cập nhật</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection

@section('scripts')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {

        $('#avatar').on('change', function () {
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    $('#avatarPreview')
                        .attr('src', e.target.result)
                        .css('display', 'block');
                };
                reader.readAsDataURL(file);
            }
        });

        $('input[name="type"]').on('change', function () {
            if ($('#member').is(':checked') || $('#admin').is(':checked')) {
                $('#hotelSelect').prop('disabled', true).val("");
            } else {
                $('#hotelSelect').prop('disabled', false); // Bật lại trường chọn khách sạn
            }
        });

        $('#togglePassword').click(function () {
            // Get the input field and toggle the type
            const passwordField = $('#password');
            const passwordFieldType = passwordField.attr('type');

            if (passwordFieldType === 'password') {
                passwordField.attr('type', 'text');
                // Change the eye icon to "open" when password is visible
                $(this).removeClass('bi-eye-slash').addClass('bi-eye');
            } else {
                passwordField.attr('type', 'password');
                // Change the eye icon to "closed" when password is hidden
                $(this).removeClass('bi-eye').addClass('bi-eye-slash');
            }
        });

        // Gọi hàm ngay khi tải trang để đặt trạng thái đúng
        if ($('#member').is(':checked') || $('#admin').is(':checked')) {
            $('#hotelSelect').prop('disabled', true);
        }

    });
</script>
@endsection

