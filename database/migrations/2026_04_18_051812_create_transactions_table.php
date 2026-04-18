<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->cascaOnDelete();
            $table->foreignId('vehicle_id')->constrained()->cascaOnDelete();
            $table->foreignId('parking_rate_id')->constrained()->cascaOnDelete();
            $table->foreignId('parking_area_id')->constrained()->cascaOnDelete();
            $table->foreignId('ticket_id')->constrained()->cascaOnDelete();
            $table->datetime('time_out')->useCurrent();
            $table->integer('duration_time');
            $table->decimal('total_rate', 10, 0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
