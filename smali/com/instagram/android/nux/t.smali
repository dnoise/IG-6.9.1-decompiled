.class final Lcom/instagram/android/nux/t;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    sget-object v0, Lcom/instagram/p/b;->c:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 160
    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->c()V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v0}, Lcom/instagram/android/nux/n;->b()V

    .line 162
    return-void
.end method
