.class public Lcom/instagram/ui/dialog/g;
.super Lcom/instagram/base/a/a;
.source "ProgressDialogFragment.java"


# instance fields
.field private final aa:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V

    .line 15
    new-instance v0, Lcom/instagram/ui/dialog/h;

    invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/h;-><init>(Lcom/instagram/ui/dialog/g;)V

    iput-object v0, p0, Lcom/instagram/ui/dialog/g;->aa:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public static W()Lcom/instagram/ui/dialog/g;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/instagram/ui/dialog/g;

    invoke-direct {v0}, Lcom/instagram/ui/dialog/g;-><init>()V

    return-object v0
.end method

.method private X()Lcom/instagram/ui/dialog/f;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/instagram/ui/dialog/f;

    invoke-virtual {p0}, Lcom/instagram/ui/dialog/g;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/facebook/az;->loading:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/g;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/ui/dialog/g;->X()Lcom/instagram/ui/dialog/f;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/instagram/ui/dialog/g;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V

    .line 33
    iget-object v1, p0, Lcom/instagram/ui/dialog/g;->aa:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 35
    return-object v0
.end method
