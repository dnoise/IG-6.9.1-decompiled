.class final Lcom/instagram/android/feed/a/a/y;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/y;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/y;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->a(Lcom/instagram/android/feed/a/a/x;)Landroid/app/Dialog;

    .line 149
    return-void
.end method
