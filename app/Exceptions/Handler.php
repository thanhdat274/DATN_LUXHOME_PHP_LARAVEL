<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpFoundation\Response;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
        });
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param \Illuminate\Http\Request $request
     * @param Throwable $e
     * @return Response
     * @throws Throwable
     */
    public function render($request, Throwable $e)
    {
        if ($e instanceof RespException) {
            return $e->render();
        }

//        if ($e instanceof ValidationException) {
//            return parent::render($request, $e);
//        }
//
//        if ($e instanceof \Exception || $e instanceof \Error) {
//
//            if ($request->expectsJson()) {
//                $firstField = array_key_first($e->validator->errors()->messages());
//                $firstError = $e->validator->errors()->first($firstField);
//                return response()->json([
//                    'message' => $firstError,
//                ], 422);
//            }
//
//            return redirect()->back()->with('error', $e->getMessage());
//        }

        return parent::render($request, $e);
    }
}
