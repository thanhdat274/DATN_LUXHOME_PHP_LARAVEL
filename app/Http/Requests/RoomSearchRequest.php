<?php

namespace App\Http\Requests;

class RoomSearchRequest extends BaseSearchRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'catalogue_room_id' => 'string|',
            'status' => 'numeric|',
            'hotel_id' => 'string|'
        ];
    }
}
