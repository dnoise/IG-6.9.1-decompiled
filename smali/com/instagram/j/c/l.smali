.class final Lcom/instagram/j/c/l;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/j/c/g;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/instagram/j/c/l;->a:Lcom/instagram/j/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/j/c/l;->a:Lcom/instagram/j/c/g;

    invoke-static {v0}, Lcom/instagram/j/c/g;->d(Lcom/instagram/j/c/g;)Lcom/instagram/j/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/j/c/n;->W()V

    .line 196
    return-void
.end method
