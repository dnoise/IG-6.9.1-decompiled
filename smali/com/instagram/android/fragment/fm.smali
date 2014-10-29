.class final Lcom/instagram/android/fragment/fm;
.super Ljava/lang/Object;
.source "TabbedExploreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fl;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fl;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/instagram/android/fragment/fm;->a:Lcom/instagram/android/fragment/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/android/fragment/fm;->a:Lcom/instagram/android/fragment/fl;

    sget-object v1, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/fl;->a(I)V

    .line 366
    return-void
.end method
