.class final Lcom/instagram/android/fragment/z;
.super Ljava/lang/Object;
.source "CompositeSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/y;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/y;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->af()V

    .line 93
    return-void
.end method
