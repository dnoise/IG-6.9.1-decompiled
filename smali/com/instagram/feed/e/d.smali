.class final Lcom/instagram/feed/e/d;
.super Ljava/lang/Object;
.source "MegaphoneDismissDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/c;


# direct methods
.method constructor <init>(Lcom/instagram/feed/e/c;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/feed/e/d;->a:Lcom/instagram/feed/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/feed/e/d;->a:Lcom/instagram/feed/e/c;

    invoke-static {v0}, Lcom/instagram/feed/e/c;->a(Lcom/instagram/feed/e/c;)Landroid/app/Dialog;

    .line 51
    return-void
.end method
