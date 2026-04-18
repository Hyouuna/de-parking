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
        Schema::table('parking_rates', function (Blueprint $table) {
            // hapus first_hour_rate
            $table->dropColumn('first_hour_rate');

            // rename next_hour_rate → rate_per_hour
            $table->renameColumn('next_hour_rate', 'rate_per_hour');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
