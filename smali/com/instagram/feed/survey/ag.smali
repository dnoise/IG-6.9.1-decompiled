.class final Lcom/instagram/feed/survey/ag;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/instagram/feed/survey/ag;->c:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/ag;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/instagram/feed/survey/ag;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/instagram/feed/survey/ag;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/instagram/feed/survey/ag;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/instagram/feed/survey/ag;->b:Landroid/app/Dialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 292
    :cond_0
    return-void
.end method
