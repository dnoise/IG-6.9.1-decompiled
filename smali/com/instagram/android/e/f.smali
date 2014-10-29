.class final Lcom/instagram/android/e/f;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "RegionPickDialog.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/e/d;


# direct methods
.method private constructor <init>(Lcom/instagram/android/e/d;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/e/f;->a:Lcom/instagram/android/e/d;

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/e/d;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/instagram/android/e/f;-><init>(Lcom/instagram/android/e/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p2}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/instagram/android/e/f;->a:Lcom/instagram/android/e/d;

    invoke-static {v1}, Lcom/instagram/android/e/d;->b(Lcom/instagram/android/e/d;)Lcom/instagram/android/e/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/e/b;->a(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    return-void
.end method
