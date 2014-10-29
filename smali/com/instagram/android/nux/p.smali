.class final Lcom/instagram/android/nux/p;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/instagram/android/nux/p;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter

    .prologue
    .line 435
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 436
    sget-object v0, Lcom/instagram/p/b;->j:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 437
    iget-object v0, p0, Lcom/instagram/android/nux/p;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;)V

    .line 438
    return-void
.end method
