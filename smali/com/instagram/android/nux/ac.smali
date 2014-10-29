.class final Lcom/instagram/android/nux/ac;
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
    .line 423
    iput-object p1, p0, Lcom/instagram/android/nux/ac;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 427
    sget-object v0, Lcom/instagram/p/b;->k:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 428
    iget-object v0, p0, Lcom/instagram/android/nux/ac;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;)V

    .line 429
    return-void
.end method
