.class final Lcom/instagram/android/fragment/gn;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/instagram/android/fragment/gn;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 339
    new-instance v0, Lcom/instagram/android/login/d/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/gn;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/gn;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/fy;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/login/d/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/s;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/d/a;->b([Ljava/lang/Object;)Lcom/instagram/common/c/a;

    .line 340
    return-void
.end method
