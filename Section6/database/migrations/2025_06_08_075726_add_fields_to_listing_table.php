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
        Schema::table('listings', function (Blueprint $table) {
            $table->unsignedBigInteger('beds');
    $table->unsignedBigInteger('bath');
    $table->unsignedBigInteger('area');
    $table->tinyText('city');
    $table->tinyText('code');
    $table->tinyText('street');
    $table->tinyText('street_nr');
    $table->unsignedBigInteger('price');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('listings', function (Blueprint $table) {
            $table->dropColumn('beds');
            $table->dropColumn('bath');
            $table->dropColumn('area');
            $table->dropColumn('city');
            $table->dropColumn('code');
            $table->dropColumn('street');
            $table->dropColumn('street_nr');
            $table->dropColumn('price');
        });
    }
    
};
