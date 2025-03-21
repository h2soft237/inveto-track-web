<?php

use App\Models\BudgetProgram;
use App\Models\BudgetItemCategory;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('budget_items', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignIdFor(BudgetProgram::class);
            $table->foreignIdFor(BudgetItemCategory::class);
            $table->bigInteger('company_id')->nullable();
            $table->bigInteger('created_by_id')->nullable();
            $table->bigInteger('changed_by_id')->nullable();
            $table->text('name')->nullable();
            $table->bigInteger('target_amount')->nullable();
            $table->bigInteger('invested_amount')->nullable();
            $table->bigInteger('balance')->nullable();
            $table->bigInteger('percentage_done')->nullable();
            $table->string('is_complete')->nullable()->default('No');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('budget_items');
    }
};
