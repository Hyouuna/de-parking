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
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->string('ticket_code');
            $table->foreignId('user_id')->constrained()->cascaOnDelete();
            $table->foreignId('vehicle_id')->constrained()->cascaOnDelete();
            $table->foreignId('parking_rate_id')->constrained()->cascaOnDelete();
            $table->foreignId('parking_area_id')->constrained()->cascaOnDelete();
            $table->datetime('time_in')->useCurrent();
            $table->datetime('time_out')->nullable();
            $table->enum('status', ['in', 'out'])->default('in');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tickets');
    }
};
