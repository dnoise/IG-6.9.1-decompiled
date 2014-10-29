.class public final Lcom/instagram/ui/dialog/f;
.super Landroid/app/Dialog;
.source "IgProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    sget v0, Lcom/facebook/ba;->IgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    sget v0, Lcom/facebook/aw;->progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->setContentView(I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    sget v0, Lcom/facebook/av;->message:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
