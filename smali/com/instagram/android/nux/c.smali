.class final Lcom/instagram/android/nux/c;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/a;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialogInterface"

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->f(Lcom/instagram/android/nux/a;)Z

    .line 94
    iget-object v0, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->d(Lcom/instagram/android/nux/a;)Lcom/instagram/android/nux/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/nux/e;->c()V

    .line 95
    return-void
.end method
