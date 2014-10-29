.class final Lcom/instagram/android/maps/c/e;
.super Lcom/instagram/api/j/a;
.source "PhotoMapsEditHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0, p1}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;)V

    .line 68
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/c/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/c/f;-><init>(Lcom/instagram/android/maps/c/e;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->c(Lcom/instagram/android/maps/c/c;)I

    move-result v0

    sget v1, Lcom/instagram/android/maps/e/f;->b:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v1}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;

    move-result-object v1

    sget v2, Lcom/facebook/az;->preparing_your_map:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    .line 86
    invoke-super {p0}, Lcom/instagram/api/j/a;->a()V

    .line 87
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/c/e;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {v1}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;

    move-result-object v1

    sget v2, Lcom/facebook/az;->saving_your_updates:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/c/e;->a(Ljava/lang/String;)V

    return-void
.end method
