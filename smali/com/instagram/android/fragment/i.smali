.class final Lcom/instagram/android/fragment/i;
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
    .line 27
    iput-object p1, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    .local p0, this:Lcom/instagram/android/fragment/i;,"Lcom/instagram/android/fragment/h.com/instagram/android/fragment/i;"
    iget-object v0, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/h;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/h;->ar()V

    .line 31
    return-void
.end method
