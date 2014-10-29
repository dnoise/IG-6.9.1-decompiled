.class final Lcom/instagram/android/fragment/dy;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dx;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dx;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/instagram/android/fragment/dy;->a:Lcom/instagram/android/fragment/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/dy;->a:Lcom/instagram/android/fragment/dx;

    iget-object v0, v0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 155
    return-void
.end method
