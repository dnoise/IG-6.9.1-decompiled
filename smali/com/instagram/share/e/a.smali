.class public abstract Lcom/instagram/share/e/a;
.super Ljava/lang/Object;
.source "OAuthAccount.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/instagram/share/e/a;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/instagram/share/e/a;->b:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/share/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/share/e/a;->b:Ljava/lang/String;

    return-object v0
.end method
