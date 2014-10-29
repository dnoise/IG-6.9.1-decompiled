.class final Lcom/instagram/android/fragment/j;
.super Ljava/lang/Object;
.source "AbstractTopLevelFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/h;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    .local p0, this:Lcom/instagram/android/fragment/j;,"Lcom/instagram/android/fragment/h.com/instagram/android/fragment/j;"
    iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/h;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/h;->s_()V

    .line 37
    return-void
.end method
