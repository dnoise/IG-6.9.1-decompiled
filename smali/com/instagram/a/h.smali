.class final Lcom/instagram/a/h;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/instagram/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/a/f;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/instagram/a/h;->b:Lcom/instagram/a/f;

    iput-object p2, p0, Lcom/instagram/a/h;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/a/h;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/instagram/a/h;->b:Lcom/instagram/a/f;

    invoke-static {v0}, Lcom/instagram/a/f;->a(Lcom/instagram/a/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 327
    return-void
.end method
